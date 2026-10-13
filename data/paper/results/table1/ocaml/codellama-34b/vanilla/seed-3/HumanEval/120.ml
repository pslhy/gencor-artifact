let rec maximum (arr : int list) (k : int) : int list =
    if k = 1 then
        [List.hd (List.sort arr)]
    else
        let n = List.length arr in
        if k >= n then
            arr
        else
            let (l1, l2) = List.split arr n in
            List.append (maximum l1 k) (maximum l2 (k-n))

//Tests
maximum [(-3); (-4); 5] 3;;
maximum [4; (-4); 4] 2;;
maximum [(-3); 2; 1; 2; (-1); (-2); 1] 1;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list arr of integers and a positive integer k, return a sorted list *)
(*     of length k with the maximum k numbers in arr. *)
(*     Example 1: *)
(*     >>> maximum [(-3); (-4); 5] 3 *)
(*     [(-4); (-3); 5] *)
(*     Example 2: *)
(*     >>> maximum [4; (-4); 4] 2 *)
(*     [4; 4] *)
(*     Example 3: *)
(*     >>> maximum [(-3); 2; 1; 2; (-1); (-2); 1] 1 *)
(*     [2] *)
(*     Note: *)
(*     1. The length of the list will be in the range of [1, 1000]. *)
(*     2. The elements in the list will be in the range of [-1000, 1000]. *)
(*     3. 0 <= k <= len(arr) *)
