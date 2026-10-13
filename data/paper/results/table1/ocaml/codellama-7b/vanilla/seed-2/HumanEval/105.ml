let rec by_length (arr : int list) : string list =
    let sorted_arr = List.sort ~cmp:(fun x y -> compare x y) (List.filter ~f:(fun x -> (x >= 1 && x <= 9) ) arr) in
    let reverse_arr = List.rev sorted_arr in
    List.map ~f:(fun x ->
        if x = 1 then "One"
        else if x = 2 then "Two"
        else if x = 3 then "Three"
        else if x = 4 then "Four"
        else if x = 5 then "Five"
        else if x = 6 then "Six"
        else if x = 7 then "Seven"
        else if x = 8 then "Eight"
        else if x = 9 then "Nine"
        else "Invalid"
    ) reverse_arr
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
