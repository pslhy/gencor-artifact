
let rec fruit_distribution (s : string) (n : int) : int =
    match String.split_on_char ' ' s with
    | [num; fruit] -> begin
        match int_of_string num with
        | exception Failure _ -> 0
        | num -> begin
            match fruit with
            | "apples" -> num + fruit_distribution (String.sub s (String.length num + 1) (String.length s - (String.length num + 1))) (n - num)
            | "oranges" -> num + fruit_distribution (String.sub s (String.length num + 1) (String.length s - (String.length num + 1))) (n - num)
            | "mango" -> n - num
            | _ -> 0
        end
    end
    | _ -> 0

let string_of_fruit fruit =
    match fruit with
    | "apples" -> "apples"
    | "oranges" -> "oranges"
    | "mango" -> "mango"
    | _ -> "unknown"

let main (s : string) (n : int) : unit =
    Printf.printf "%s\n" (string_of_int (fruit_distribution s n))
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     In this task, you will be given a string that represents a number of apples and oranges *)
(*     that are distributed in a basket of fruit this basket contains *)
(*     apples, oranges, and mango fruits. Given the string that represents the total number of *)
(*     the oranges and apples and an integer that represent the total number of the fruits *)
(*     in the basket return the number of the mango fruits in the basket. *)
(*     for examble: *)
(*     >>> fruit_distribution "5 apples and 6 oranges" 19 *)
(*     8 *)
(*     >>> fruit_distribution "0 apples and 1 oranges" 3 *)
(*     2 *)
(*     >>> fruit_distribution "2 apples and 3 oranges" 100 *)
(*     95 *)
(*     >>> fruit_distribution "100 apples and 1 oranges" 120 *)
(*     19 *)
