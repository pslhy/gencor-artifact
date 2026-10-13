let rec encrypt (s : string) : string =
    if s = "" then ""
    else
        let ch = s.[0] in
        let new_ch = Char.chr(108 - (Char.code ch - 96) * 4) in
        String.make 1 new_ch ^ encrypt (String.sub s 1 (String.length s - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function encrypt that takes a string as an argument and *)
(*     returns a string encrypted with the alphabet being rotated. *)
(*     The alphabet should be rotated in a manner such that the letters *)
(*     shift down by two multiplied to two places. *)
(*     For example: *)
(*     >>> encrypt "hi" *)
(*     "lm" *)
(*     >>> encrypt "asdfghjkl" *)
(*     "ewhjklnop" *)
(*     >>> encrypt "gf" *)
(*     "kj" *)
(*     >>> encrypt "et" *)
(*     "ix" *)
