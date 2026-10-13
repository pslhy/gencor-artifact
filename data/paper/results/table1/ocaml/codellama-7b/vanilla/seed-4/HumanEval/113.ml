let rec odd_count (lst : string list) : string list = 
    match lst with 
    | head :: tail -> 
        (Str.split_delim (Str.regexp "[0-9]") head)
        |> List.map (fun x -> if x.[0] = "-" then "the number of odd elements " ^ (string_of_int (List.length (List.filter (fun x -> x.[0] = "1" || x.[0] = "3" || x.[0] = "5" || x.[0] = "7" || x.[0] = "9" ) (Str.split (Str.regexp "[0-9]") x)) ) ) ^ " the str" ^ (string_of_int (List.length (Str.split (Str.regexp "[0-9]") head))) ^ "ng " ^ (string_of_int ((List.length (Str.split (Str.regexp "[0-9]") head)) -1) ) ^ " of the " ^ "input." ) 
        else "the number of odd elements " ^ (string_of_int (List.length (List.filter (fun x -> x.[0] = "1" || x.[0] = "3" || x.[0] = "5" || x.[0] = "7" || x.[0] = "9" ) (Str.split (Str.regexp "[0-9]") x)) ) ) ^ " the str" ^ (string_of_int (List.length (Str.split (Str.regexp "[0-9]") head))) ^ "ng " ^ (string_of_int ((List.length (Str.split (Str.regexp "[0-9]") head)) -1) ) ^ " of the " ^ "input." ) :: (odd_count tail) 
    | [] -> []


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
