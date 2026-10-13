
let rec split_Arr (l : int list) (n : int) : int list = 
    let (first, last) = List.split (List.rev (List.rev l)) n in
    first @ last

let l = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] input =

split_Arr lnot

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
