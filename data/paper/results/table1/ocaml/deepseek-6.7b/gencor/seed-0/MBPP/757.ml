
let rec count_reverse_pairs (test_list : string list) : int =
    let rec check_reverse (a : string) (b : string) : bool =
        a = String.of_seq (List.to_seq b |> List.rev) in
    let rec helper (rem_list : string list) (count : int) : int =
        match rem_list with
        | [] -> count
        | hd::tl -> helper (List.filter (fun x -> not (check_reverse hd x)) tl) (count + List.length (List.filter (fun x -> check_reverse hd x) tl))
    in
    helper test_list 0

let test1 = count_reverse_pairs ["abc"; "cba"; "bca"; "bac"; "xyz"; "zyx"]
let test2 = count_reverse_pairs ["java"; "laja"; "ml"; "lms"]
let test3 = count_reverse_pairs ["python"; "nohty"; "ph"; "r"]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
