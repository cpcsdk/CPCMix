use crate::db::*;
use cpclib::assembler::preamble::*;
use cpclib::sna::*;
use itertools::Itertools;
use std::convert::TryFrom;

impl Music {

	/// Code for the music.
	/// Currently the code targets a snapshot. We'll have to pack in a single executable later
	pub fn code(&self) -> String {
		let mut code = String::new();
		let header = self.header();


		code += "
			org 0x1000
			RUN $
		";

		if ! header.need_system() {
			code += "
			di
			ld sp, $
			ld hl, 0xc9fb
			ld (0x38), hl
			ei
			";
		}
		else {
			code += "
			ld sp, $
			"
		}

		code += &format!("
		call {} ; init

loop
		ld b, 0xf5
		in a, (c)
		rra 
		jr nc, loop

		halt
		halt
		call {} ; play

		jp loop
		",
		dbg!(header.init_call_address()),
		dbg!(header.play_call_address())
		);



		code += &format!("
		org {}
		db {}
		",
		dbg!(header.load_adress()),
		self.content()
			.iter()
			.map(|v| v.to_string())
			.join(", ")
		);

		code
	}


	pub fn sna(&self) -> Snapshot {
		let code = self.code();
		println!("{}", code);
		let listing = Listing::from_str(&code).unwrap();
		let env = visit_tokens_all_passes(&listing).unwrap();
		env.sna().clone()
	}

}