
let rec text_lowercase_underscore (text : string) : bool = 
  let rec helper (chars : char list) : bool = 
    match chars with
    | [] -> true
    | '_' :: rest -> 
        let lower_rest = List.filter (fun c -> Char.lowercase_ascii c = c) rest in
        if List.length lower_rest = List.length rest then helper lower_rest else false
    | c :: rest -> if Char.lowercase_ascii c = c then helper rest else false
  in helper (List.of_seq (String.to_seq text))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
