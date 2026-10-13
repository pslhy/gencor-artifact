let rec freq_count (list1 : int list) : (int * int) list = 
    let helper (list1 : int list) (list2 : int list) (count : int) =
        match list1 with
        | [] -> list2
        | hd :: tl -> helper list1 list2 (count + 1)
in
    helper list1 [] 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
