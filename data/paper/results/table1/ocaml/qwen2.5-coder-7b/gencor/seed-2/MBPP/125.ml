
let rec find_length (string : string) : int = 
    let count_diffs (acc, zeros, ones) char = 
        match char with
        | '0' -> (acc - 1, zeros + 1, ones)
        | '1' -> (acc + 1, zeros, ones + 1)
        | _ -> (acc, zeros, ones)
    in
    let (_, zeros, ones) = 
        List.fold_left count_diffs (0, 0, 0) 
            (String.to_seq string |> Seq.map (fun c -> char_of_int c)) 
    in
    max (zeros - ones) (ones - zeros)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
