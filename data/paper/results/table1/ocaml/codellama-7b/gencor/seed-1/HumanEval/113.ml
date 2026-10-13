
let rec odd_count (lst : string list) : string list =
    match lst with
    | [] -> []
    | x :: xs ->
        let num_odd_digits = 
            String.to_seq x
            |> List.of_seq
            |> List.map (fun y -> if y >= '1' && y <= '9' then (y - '0') mod 2 = 1 else 0)
            |> List.fold_left (+) 0
        in
        let odd_count = 
            string_of_int num_odd_digits
            ^ "n the str"
            ^ string_of_int x
            ^ "ng "
            ^ string_of_int (x::xs)
            ^ " of the "
            ^ string_of_int lst
            ^ "nput."
        in
        odd_count :: odd_count (xs : string list)
;;

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
