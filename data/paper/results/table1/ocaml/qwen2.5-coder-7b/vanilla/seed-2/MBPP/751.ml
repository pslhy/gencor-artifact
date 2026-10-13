let rec check_min_heap (arr : int list) : bool = 
    let rec helper i n = 
        if i >= n / 2 then true
        else if arr.(i) > arr.((2 * i) + 1) || (2 * i + 2 < n && arr.(i) > arr.((2 * i) + 2))
        then false
        else helper ((i + 1) land Int.max_int) n
    in
    arr <> [] && helper 0 (List.length arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
