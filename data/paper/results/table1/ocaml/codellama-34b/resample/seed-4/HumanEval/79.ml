(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You will be given a number in decimal form and your task is to convert it to *)
(*     binary format. The function should return a string, with each character representing a binary *)
(*     number. Each character in the string will be '0' or '1'. *)
(*     There will be an extra couple of characters 'db' at the beginning and at the end of the string. *)
(*     The extra characters are there to help with the format. *)
(*     Examples: *)
(*     >>> decimal_to_binary 15 *)
(*     "db1111db" *)
(*     >>> decimal_to_binary 32 *)
(*     "db100000db" *)
let rec decimal_to_binary (decimal : int) : string = 
    let base2 = "db100000db" in
    let rec helper dec acc = 
        if dec = 0 then
            acc
        else
            let (q, r) = (dec / 2, dec mod 2) in
            helper q (string_of_int r :: acc) in
    helper decimal [] |> List.rev |> String.concat "" |> (fun x -> String.sub x 1 ((String.length x) - 2))

