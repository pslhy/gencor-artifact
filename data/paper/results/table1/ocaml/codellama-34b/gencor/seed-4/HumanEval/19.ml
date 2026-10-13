
let rec sort_numbers (numbers : string) : string = 
    let number_to_int (number : string option) : int option =
        match number with
        | Some "zero" -> Some 0
        | Some "one" -> Some 1
        | Some "two" -> Some 2
        | Some "three" -> Some 3
        | Some "four" -> Some 4
        | Some "five" -> Some 5
        | Some "six" -> Some 6
        | Some "seven" -> Some 7
        | Some "eight" -> Some 8
        | Some "nine" -> Some 9
        | _ -> None
    in
    let nums = String.split_on_char ' ' numbers |> List.filter_map number_to_int in
    let sorted_nums = List.sort nums in
    String.concat " " (List.map string_of_int sorted_nums)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input is a space-delimited string of numberals from 'zero' to 'nine'. *)
(*     Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'. *)
(*     Return the string with numbers sorted from smallest to largest *)
(*     >>> sort_numbers "three one five" *)
(*     "one three five" *)
