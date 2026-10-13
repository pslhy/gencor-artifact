let rec count_reverse_pairs (test_list : string list) : int = 
    let rec find_reverse (str : string) : string = 
        let rec reverse (acc : char list) (s : string) : string = 
            if s = "" then List.rev acc |> String.of_char_list
            else reverse (Char :: acc) (String.sub s 1 (String.length s - 1))
        in reverse [] str
    in
    let rec helper (acc : int) (lst : string list) : int = 
        match lst with
        | [] -> acc
        | x::xs -> 
            let reversed = find_reverse x in
            let count = List.length (List.filter (fun y -> y = reversed) xs) in
            helper (acc + count) xs
    in
    helper 0 test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
