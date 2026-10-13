let rec count_rotation (arr : int list) : int =
    let n = List.length arr in
    let rec aux (start : int) (endt : int) : int =
        if start = endt then 0
        else if arr.(endt) < arr.(start) then 1 + aux start (endt - 1)
        else aux start (endt - 1)
    in
    aux 0 (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
