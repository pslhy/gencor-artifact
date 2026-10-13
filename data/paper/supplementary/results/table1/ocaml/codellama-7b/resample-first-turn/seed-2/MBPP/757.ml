let rec count_reverse_pairs (test_list : string list) : int =
    match test_list with
    | [] -> 0
    | h :: t ->
        let rev_str = String.rev h in
        let count = Utils.count_str_occurrences rev_str test_list in
        count + count_reverse_pairs t

and Utils.count_str_occurrences (test_str : string) (test_list : string list) : int =
    List.count (fun s -> s = test_str) test_list

let main =
    let test_list = ["alp", "yrt", "test", "rest", "tset"] in
    let count = count_reverse_pairs test_list in
    Printf.printf "Count of reverse strings: %d" count


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
