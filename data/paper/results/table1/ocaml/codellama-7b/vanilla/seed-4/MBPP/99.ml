let rec decimal_to_binary (n : int) : string = 
    match n with 
    | 0 -> "0" 
    | _ -> (decimal_to_binary (n / 2)) @ [if n mod 2 = 1 then '1' else '0']

let rec @ operator (l1 : string list) (l2 : string list) : string list = 
  match l2 with 
  | [] -> l1 
  | h :: t -> h :: (@ (l1, t)

let decimal_to_binary n : string = 
  match n with 
  | 0 -> "0" 
  | _ -> (decimal_to_binary (n / 2)) @ [if n mod 2 = 1 then '1' else '0'] 
  @
  [}" "

let (n : int) = input_int ()
let binary_rep : string = decimal_to_binary n 
print_endline binary_rep 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros. *)
