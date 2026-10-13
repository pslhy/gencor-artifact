
let rec checks (n : int) : bool = 
    let rev = n |> string_of_int |> String.to_seq |> Seq.map (fun c -> c |> Char.code |> Char.chr |> String.make 1) |> String.concat "" |> int_of_string in
    n = rev + 1 ;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
