(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a non-empty list of integers arr and an integer k, return *)
(*     the sum of the elements with at most two digits from the first k elements of arr. *)
(*     Example: *)
(*     >>> add_elements [111; 21; 3; 4000; 5; 6; 7; 8; 9] 4 *)
(*     24 *)
(*     Constraints: *)
(*     1. 1 <= len(arr) <= 100 *)
(*     2. 1 <= k <= len(arr) *)
let rec add_elements (arr : int list) (k : int) : int =
    let rec aux (acc : int) (i : int) : int =
        if i >= k then
            acc
        else
            let digit_count = float_of_int arr.(i) |> log10 |> ceil |> int_of_float in
            if digit_count <= 2 then
                aux (acc + arr.(i)) (i + 1)
            else
                aux acc (i + 1)
    in aux 0 0

