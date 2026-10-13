let rec check_str (string : string) : bool =
    let vowels = ["a", "e", "i", "o", "u"] in
    let sub_str = Str.first_chars string 1 in
    match List.head vowels with
    | None -> false
    | Some vs -> vs = sub_str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given string is starting with a vowel or not using regex. *)
