(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list of integers, sort the integers that are between 1 and 9 inclusive, *)
(*     reverse the resulting list, and then replace each digit by its corresponding name from *)
(*     "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine". *)
(*     For example: *)
(*     >>> by_length [2; 1; 1; 4; 5; 8; 2; 3] *)
(*     ["Eight"; "Five"; "Four"; "Three"; "Two"; "Two"; "One"; "One"] *)
(*     If the list is empty, return an empty list: *)
(*     >>> by_length [] *)
(*     [] *)
(*     If the list has any strange number ignore it: *)
(*     >>> by_length [1; (-1); 55] *)
(*     ["One"] *)
let rec by_length (arr : int list) : string list =
    match arr with
    | [] -> []
    | _ ->
        let odd = List.filter (fun x -> x mod 2 = 1) arr in
        let even = List.filter (fun x -> x mod 2 = 0) arr in
        let rec sort_and_reverse (arr : int list) : int list =
            match arr with
            | [] -> []
            | x :: [] -> [x]
            | x :: y :: rest ->
                if x >= y then
                    x :: sort_and_reverse (y :: rest)
                else
                    y :: sort_and_reverse (x :: rest) in
        let sorted_even = sort_and_reverse even in
        let sorted_odd = sort_and_reverse odd in
        let rec digit_to_name (x : int) : string =
            match x with
            | 1 -> "One"
            | 2 -> "Two"
            | 3 -> "Three"
            | 4 -> "Four"
            | 5 -> "Five"
            | 6 -> "Six"
            | 7 -> "Seven"
            | 8 -> "Eight"
            | 9 -> "Nine"
            | _ -> raise (Failure "Invalid digit") in
        List.map digit_to_name sorted_even @ List.map digit_to_name sorted_odd

