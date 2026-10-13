(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)
let rec count_bidirectional (test_list :  (int * int) list) : int = 
    match test_list with
      head :: tail -> 1 + (count_bidirectional 
            (((fst head) > (snd head)) && ((snd head) < (fst head))) list))
end

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:75: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_bidirectional (test_list :  (int * int) list) : int = 
    match test_list with 
    | [] -> 0
    | ((fst_elem, snd_elem) :: tl) -> 
        (if fst_elem = snd_elem then 1 else 0) + (count_bidirectional tl);;

