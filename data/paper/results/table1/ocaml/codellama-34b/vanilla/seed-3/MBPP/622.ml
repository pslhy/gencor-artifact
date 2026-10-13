let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
    if n = 1 then
        float (arr1.[0] + arr2.[0]) /. 2.
    else
        let a1 = arr1.[n - 1] in
        let a2 = arr2.[n - 1] in
        if a1 < a2 then
            get_median arr1 arr2 (n - 1)
        else if a2 < a1 then
            get_median arr2 arr1 (n - 1)
        else
            float (a1 + a2) /. 2.


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
