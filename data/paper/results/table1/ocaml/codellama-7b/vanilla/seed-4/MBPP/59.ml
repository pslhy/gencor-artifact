let rec is_octagonal (n : int) : int = 
    (* Check if the number is octagonal by calculating its length of its decimal representation and comparing it to the number's digits. *)
    let length = abs n in
    let str = string_of_int n in
    let digits = List.length (String.split_on_char '''' str) in
    if length = digits then 
        n
    else
        (* If the number is not octagonal, check the next larger number. *)
        is_octagonal (n + 1)

let nth_octagonal (n : int) : int = 
    if n < 1 then 
        invalid_arg "n must be greater than or equal to 1"
    else 
        is_octagonal (1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth octagonal number. *)
