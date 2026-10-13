let rec odd_count (lst : string list) : string list =
  match lst with
  | [] -> []
  | x :: xs ->
    let x_count = String.length (String.sub x 0 (String.length x - 1)) in
    let odd_count =
      List.length
        (String.to_list (String.sub x 0 (String.length x - 1)) |> List.filter
          (fun c -> c = '1' || c = '3' || c = '5' || c = '7' || c = '9'))
    in
    (string_of_int odd_count) :: odd_count (xs);;


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
