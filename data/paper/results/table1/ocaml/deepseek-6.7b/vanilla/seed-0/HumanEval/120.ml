let rec maximum (arr : int list) (k : int) : int list =
    let rec sort desc list =
         match list with
         | [] -> []
         | x :: xs -> let (smaller, larger) = List.partition ((>) x) xs in
                     x :: (sort desc smaller) @ (sort desc larger)
    in
    let rec k_highest_numbers desc list k =
         match list, k with
         | _, 0 -> []
         | _, n when n > 0 -> let sorted = sort desc list in
                                 let highest = List.hd sorted in
                                 highest :: k_highest_numbers desc (List.filter ((<>) highest) list) (k - 1)
    in
    k_highest_numbers false arr k


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
