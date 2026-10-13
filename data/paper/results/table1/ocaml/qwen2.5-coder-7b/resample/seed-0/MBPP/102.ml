(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
let rec snake_to_camel (word : string) : string = 
  let rec helper acc chars = 
    match chars with
    | [] -> acc
    | '_' :: rest -> 
        let (first, rest') = List.split_at 1 rest in
        helper (acc ^ String.uppercase_ascii first) rest'
    | c :: rest -> helper (acc ^ String.lowercase_ascii (String.make 1 c)) rest
  in
  helper "" (List.of_seq (String.to_seq word))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:30: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
  let rec helper acc chars = 
    match chars with
    | [] -> acc
    | '_' :: rest -> 
        let (first, rest') = chop_prefix chars in
        helper (acc ^ String.uppercase_ascii first) rest'
    | c :: rest -> helper (acc ^ String.lowercase_ascii (String.make 1 c)) rest
  and chop_prefix = function
    | '_' :: rest -> rest
    | x -> failwith "Invalid snake_case string"
  in
  helper "" (List.of_seq (String.to_seq word))

