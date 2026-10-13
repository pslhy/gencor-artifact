let rec change_date_format (dt : string) : string =
    let d = List.nth (String.split_on_chars ["-"] dt) 0 in
    let m = List.nth (String.split_on_chars ["-"] dt) 1 in
    let y = List.nth (String.split_on_chars ["-"] dt) 2 in
    y ^ "-" ^ m ^ "-" ^ d


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
