
let rec upper_ctr (str : string) : int = 
  let rec helper (chars : char list) (count : int) : int = 
    match chars with 
    | [] -> count 
    | ch :: rest -> if ch >= 'A' && ch <= 'Z' then helper rest (count + 1) else helper rest count 
  in helper (String.to_seq str |> Seq.to_dispenser
string_of_int
) str

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the upper case characters in a given string. *)
