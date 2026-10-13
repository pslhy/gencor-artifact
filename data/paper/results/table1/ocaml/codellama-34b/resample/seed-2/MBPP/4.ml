(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
    match nums with
    | [] -> []
    | (x::xs) ->
        let (lt, gt) = (List.filter (fun y -> y < x) xs, List. filter (fun y -> y >= x) xs) in
        let ht = heap_queue_largest gt n in
        if (List.length ht) >= n then ht else (x :: ht)

