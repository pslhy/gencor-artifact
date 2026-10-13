let rec check_min_heap (arr : int list) : bool =
    let rec check_array (i : int) (len : int) : bool =
        if i >= len then 
            true
        else
            let left = 2*i + 1 in
            let right = 2*i + 2 in
            let cond1 = if left < len then arr.(left) >= arr.(i) else true
            and cond2 = if right < len then arr.(right) >= arr.(i) else true in
            cond1 && cond2 && (check_array left len) && (check_array right len)
    in
    let arr_len = List.length arr in
    check_array 0 arr_len


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
