(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input is a space-delimited string of numberals from 'zero' to 'nine'. *)
(*     Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'. *)
(*     Return the string with numbers sorted from smallest to largest *)
(*     >>> sort_numbers "three one five" *)
(*     "one three five" *)
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
    let nums = String.split_on_string numbers in
    List.map ~f:number_to_int nums |>
    List.sort ~cmp:(fun x y -> compare x y) |>
    List.map ~f:(fun x -> string_of_int x) |>
    String.concat " "

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:16: Unbound value "String.split_on_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numbers (numbers : string) : string = 
    let number_to_int (number : string) : int =
        match number with
        | "zero" -> 0
        | "one" -> 1
        | "two" -> 2
        | "three" -> 3
        | "four" -> 4
        | "five" -> 5
        | "six" -> 6
        | "seven" -> 7
        | "eight" -> 8
        | "nine" -> 9
        | _ -> failwith "Invalid input"
    in
    let nums = String.split_on_string numbers in
    List.map ~f:number_to_int nums |>
    List.sort ~cmp:(fun x y -> compare x y) |>
    List.map ~f:(fun x -> string_of_int x) |>
    String.concat " "

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:16: Unbound value "String.split_on_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numbers (numbers : string) : string = 
    let number_to_int (number : string) : int =
        match number with
        | "zero" -> 0
        | "one" -> 1
        | "two" -> 2
        | "three" -> 3
        | "four" -> 4
        | "five" -> 5
        | "six" -> 6
        | "seven" -> 7
        | "eight" -> 8
        | "nine" -> 9
        | _ -> failwith "Invalid input"
    in
    let nums = String.split_on_char ' ' numbers in
    List.map ~f:number_to_int nums |>
    List.sort ~cmp:(fun x y -> compare x y) |>
    List.map ~f:(fun x -> string_of_int x) |>
    String.concat " "

