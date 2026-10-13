(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to compute the n-th power of each number in a list. *)
let rec nth_nums (nums : int list) (n : int) : int list = 
    match nums with 
      head :: tail ->  (int (power (float_of_int head) n)) :: nth_nums tail n
    | [] -> []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:25: Unbound value "int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec nth_nums (nums : int list) (n : int) : int list = 
    match nums with 
      head :: tail ->  (head ** n) :: nth_nums tail n
    | [] -> []

