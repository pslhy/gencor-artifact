let rec maximum (arr : int list) (k : int) : int list =
    let rec loop (acc : int list) (cur : int) : int * int list =
        match cur with
        | [] -> (0, acc)
        | h :: t ->
            if h > fst (loop acc t) then (h, acc @ [h])
            else loop (acc @ [h]) t in
    let (max, sorted) = loop [] arr
    in sorted @ List.map ((-) max) k arr

let maximum (arr : int list) (k : int) : int list =
    let wrapped = List.map ((+) 0) arr in
    let sorted = wrapped |> List.sort (fun a b -> b - a) in
    List.take k sorted |> List.map ((-) (List.hd sorted))


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
