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
    let should_ignore (x : int) =
        (x < 1 || x > 9) in
    let ignore_and_convert (x : int) =
        match x with
        | 1 -> "One"
        | 2 -> "Two"
        | 3 -> "Three"
        | 4 -> "Four"
        | 5 -> "Five"
        | 6 -> "Six"
        | 7 -> "Seven"
        | 8 -> "Eight"
        | 9 -> "Nine" in
    let filtered = List.filter (fun x -> not (should_ignore x)) arr in
    let reversed = List.rev filtered in
    List.map (fun x -> ignore_and_convert x) reversed

(* Test the function *)
let () =
    let test_cases : (int list * string list) list =
        [[2; 1; 1; 4; 5; 8; 2; 3], ["Eight"; "Five"; "Four"; "Three"; "Two"; "Two"; "One"; "One"]] in
    let print_result (arr : int list) (expected : string list) : unit =
        let result = by_length arr in
        Printf.printf "%d lists, " (List.length arr);
        if result = expected then
            Printf.printf "passed\n"
        else
            Printf.printf "failed\n"
    in
    List.iter (fun (arr, expected) -> print_result arr expected) test_cases

