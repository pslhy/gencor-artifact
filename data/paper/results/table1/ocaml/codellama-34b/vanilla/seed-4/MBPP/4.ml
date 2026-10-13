let rec heap_queue_largest (nums : int list) (n : int) : int list = 
    (* special case for lists with less than n elements *)
    let rec sort (xs : int list) : int list = 
        match xs with
        | [] -> []
        | x :: xs ->
            let smaller = List.filter (fun y -> y <= x) xs in
            let larger = List.filter (fun y -> y > x) xs in
            smaller @ (x :: sort larger) in
    let rec heap = List.sort_uniq compare (List.head nums) :: heap_queue_largest (List.tl nums) (n - 1) in
    if n = 0 then [] else heap


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
