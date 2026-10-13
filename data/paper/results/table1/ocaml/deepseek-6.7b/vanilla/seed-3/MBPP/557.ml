let rec toggle_string (string : string) : string =
  let b = Buffer.create (String.length string) in
  String.iter (fun c -> Buffer.add_char b (if Char.uppercase_ascii c = String.make 1 c then Char.lowercase_ascii c else Char.uppercase_ascii c)) string;
  Buffer.contents b


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
