
let rec count_reverse_pairs (test_list : string list) : int = 
    let rec find_reverse (str : string) : string = 
        let rec reverse (acc : char list) (s : string) : string = 
            if s = "" then List.rev acc |> String.of_seq 
            else reverse (s.[0]::acc) (String.sub s 1 (String.length s - 1))
        in reverse [] str
    in 
    let rec inner_loop (lst : string list) (count : int) : int = 
        match lst with 
        | [] -> count 
        | x::xs -> 
            if List.exists (fun y -> y = (find_reverse x)) xs then 
                inner_loop xs (count + 1) 
            else 
                inner_loop xs count
    in 
    inner_loop test_list 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
