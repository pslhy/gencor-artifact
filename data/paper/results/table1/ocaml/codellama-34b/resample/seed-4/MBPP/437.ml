(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
let rec remove_odd (str1 : string) : string = 
    let should_remove (c : char) =
        (int_of_char c) mod 2 = 1
    in
    String.filter (fun c -> not (should_remove c)) str1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:5: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_odd (str1 : string) : string = 
    let rec inner (str : string) : string = 
        match str with
        | [] -> []
        | h :: t -> if (h mod 2) = 0 then h :: inner t else inner t
    in
    inner str1

