let rec odd_count (lst : string list) : string list =
    match lst with
    | [] -> []
    | x :: xs ->
        let num_odd_digits = num_odd_digits_in_string x in
        let rest_of_list = odd_count xs in
        num_odd_digits :: rest_of_list

and num_odd_digits_in_string (s : string) : string =
    "the number of odd elements " ^ (string_of_int (List.length (List.filter (fun x -> if String.get s x = '1' then true else false) (0 -- (String.length s - 1))))) ^ "n the str" ^ (string_of_int (String.length s)) ^ "ng " ^ (string_of_int (String.length s)) ^ " of the " ^ "nput." in

let () = print_endline (string_of_list (odd_count ["1234567"])) in
let () = print_endline (string_of_list (odd_count ["3"; "11111111"])) in
(* Test cases: *)
let inputs = [
    ["1234567"];
    ["3"; "11111111"];
] in
let outputs = [
    ["the number of odd elements 4n the str4ng 4 of the 4nput."];
    ["the number of odd elements 1n the str1ng 1 of the 1nput."; "the number of odd elements 8n the str8ng 8 of the 8nput."]
] in
List.iter2 (fun input output ->
    let answer = odd_count input in
    assert (answer = output)
) inputs outputs


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
