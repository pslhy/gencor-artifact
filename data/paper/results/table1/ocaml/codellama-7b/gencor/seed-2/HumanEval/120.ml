
let rec maximum (arr : int list) (k : int) : int list =
    match arr with
    | [] -> []
    | _ ->
        let sorted = List.sort arr
        |> List.rev
        |> List.tl
        |> List.rev
        in
        let rec max_k (sorted_list : int list) (k : int) (max_list : int list) : int list =
            match sorted_list with
            | [] -> max_list
            | head :: tail ->
                if k = 0
                then max_list
                else
                    if head > List.hd max_list
                    then
                        let new_max_list = head :: max_list
                        in
                        max_k tail (k - 1) new_max_list
                    else max_k tail k max_list
            in
            max_k sorted k []
let arr = [-3; -4; 5]
let k = 3

maximum arr 3

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
