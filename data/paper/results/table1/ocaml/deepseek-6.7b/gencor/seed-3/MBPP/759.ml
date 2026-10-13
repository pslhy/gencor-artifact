
let rec is_decimal (num : string) : bool =
  match num with
  | _ when num = "" -> false
  | "." -> false
  | _ when num.[0] = '.' -> is_decimal (String.sub num 1 (String.length num - 1))
  | _ when num.[String.length num-1] = '.' -> is_decimal (String.sub num 0 (String.length num - 1))
  | _ -> is_decimal (String.sub num 0 (String.index_opt num '.' |> Option.value ~-1))
    |> (&&) (is_decimal (String.sub num (String.index_opt num '.' |> Option.value ~-1) (String.length num - 
    (String.index_opt num '.' |> Option.value ~-1))))
    |> (&&) (String.sub num (String.index_opt num '.' |> Option.value ~-1) 3 = "2.")

let test = is_decimal "2."

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
