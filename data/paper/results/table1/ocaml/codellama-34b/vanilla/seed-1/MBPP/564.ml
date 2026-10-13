let rec count_Pairs (arr : int list) (n : int) : int =
    match arr with
    | [] -> 0
    | x :: xs ->
        let pairs = List.filter (fun (a, b) -> a != b) (List.combinations xs 2) in
        List.length (List.concat pairs) + count_Pairs xs (n-1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
