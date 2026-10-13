let rec sort_numbers (numbers : string) : string =
    let zero = "zero".length in
    let one = "one".length in
    let two = "two".length in
    let three = "three".length in
    let four = "four".length in
    let five = "five".length in
    let six = "six".length in
    let seven = "seven".length in
    let eight = "eight".length in
    let nine = "nine".length in
    numbers
    |> String.split_on_char ' '
    |> List.map (fun x -> (x, String.length x))
    |> List.sort ~cmp:Int.compare
    |> List.map (fun (x, _) -> x)
    |> String.concat " "


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
