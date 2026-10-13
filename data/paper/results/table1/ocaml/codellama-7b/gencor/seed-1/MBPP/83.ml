
let rec get_Char (strr : string) : string =
match strr with
| [] -> []
| str::rest -> let values = [0..(String.length str - 1)]
    |> List.map (fun idx -> Char.code str.[idx] mod 26 + (Char.code str.[idx] - (Char.code str.[idx] mod 26)))
    |> List.map Char.chr
    String.make 1 (List.hd (List.sort Stdlib.compare (List.concat (List.map (fun ch -> [ch] )(List.rev (List.tl (List.tl (String.to_seq str) )) |> List.of_seq |> List.map (fun x -> (Char.code x) mod 26 + (Char.code x - (Char.code x mod 26))))))))
    |> fun x -> x@(get_Char (String.of_seq (List.to_seq (List.tl (List.tl (String.to_seq str))))))
in
get_Char (strr)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
