let rec sort_numbers (numbers : string) : string =
  let nums = ["zero"; "one"; "two"; "three"; "four"; "five"; "six"; "seven"; "eight"; "nine"] in
  let rec aux = function
    | [] -> []
    | x::xs ->
        let (less, greater) = List.partition (fun n -> String.compare x n <= 0) xs in
        (aux less) @ [x] @ (aux greater) in
  String.concat " " (aux (List.filter (fun num -> String.contains numbers num) nums))

(* Test cases *)
let () = assert (sort_numbers "three one five" = "one three five")
let () = assert (sort_numbers "nine eight seven" = "seven eight nine")
let () = assert (sort_numbers "zero zero zero" = "zero zero zero")


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
