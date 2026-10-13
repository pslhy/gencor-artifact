
let rec comb_sort (nums : int list) : int list =
    if nums = [] then [] else begin
        let sorted = List.sort nums in
        if sorted = nums then sorted else comb_sort sorted
    end;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
