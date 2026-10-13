let rec check_min_heap (arr : int list) : bool =
    if List.length arr <= 1 then
        true
    else if List.hd arr < List.hd (List.tl arr) then
        check_min_heap (List.tl arr)
    else
        false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
