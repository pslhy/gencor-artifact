
let rec count_Substrings (s : string) : int =
  match s with
  | "" -> 0
  | x :: xs ->
    let digit = Char.code x - Char.code '0'
    in
      if digit = 0 then
        1 + count_Substrings xs
      else
        let rec aux (curr : int) (next : string) : int =
          match next with
          | "" -> 1 + curr
          | y :: ys ->
            let digit' = Char.code y - Char.code '0'
            in
              if (digit + curr) = (Char.code y) - (Char.code '0') then
                aux (curr + 1) ys
              else
                aux curr ys
        in
          aux 0 (String.sub s 1 (String.length s - 1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
