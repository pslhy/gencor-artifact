
let rec odd_count (lst : string list) : string list =
    let is_odd digit = (int_of_string digit) mod 2 = 1 in
    let count_odd (str : string) : int =
        let chars = String.split_on_char ~str in 
        List.filter ~fst:is_odd chars |> List.length
    in
    match lst with
    | [] -> []
    | str::strs ->
        let count = count_odd str in
        "the number of odd elements " ^ string_of_int count ^ " in the " ^ str ^ " of the " ^ str ^ "." :: odd_count strs

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of strings, where each string consists of only digits, return a list. *)
(*     Each element i of the output should be "the number of odd elements in the *)
(*     string i of the input." where all the i's should be replaced by the number *)
(*     of odd digits in the i'th string of the input. *)
(*     >>> odd_count ["1234567"] *)
(*     ["the number of odd elements 4n the str4ng 4 of the 4nput."] *)
(*     >>> odd_count ["3"; "11111111"] *)
(*     ["the number of odd elements 1n the str1ng 1 of the 1nput."; "the number of odd elements 8n the str8ng 8 of the 8nput."] *)
