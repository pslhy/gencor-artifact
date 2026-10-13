let rec validate (n : int) : bool = 
  let rec check (freq : int array) (num : int) : bool = 
    match num with
    | 0 -> true
    | _ -> 
        let digit = num mod 10 in
        if freq.(digit) > digit then false
        else check freq (num / 10)
  in
  let rec build_freq (num : int) (freq : int array) : int array = 
    match num with
    | 0 -> freq
    | _ -> 
        let digit = num mod 10 in
        build_freq (num / 10) (Array.set freq digit (freq.(digit) + 1))
  in
  let numbers = Array.of_list (List.rev (String.to_list (string_of_int n) |> List.map (fun c -> int_of_char c - int_of_char '0')) in
  let frequency = Array.make 10 0 in
  let frequency = build_freq n frequency in
  check frequency n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
