(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
let rec split_Arr (l : int list) (n : int) : int list = 
    let (first, last) = List.split_at (n - 1) l in 
    first @ [last];;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:25: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split_Arr (l : int list) (n : int) : int list = 
    let (first, last) = split l n in 
    first @ [last];;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:25: Unbound value "split" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split_Arr (l : int list) (n : int) : int list = 
    let (first, last) = List.splitAt n l in 
    first @ [last];;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:25: Unbound value "List.splitAt" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split_Arr (l : int list) (n : int) : int list = 
    let (first, last) = List.split n l in 
    first @ [last];;

