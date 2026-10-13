
let rec find_length (string : string) : int = 
    let length = String.length string in
    match string with 
    | "" -> length 
    | _ -> let count = String.make 1 (String.get string 0) |> String.length in 
           let substring = String.sub string 1 (length - 1) in 
           let diff = find_length substring in
           max count diff

let () = 
    let test_cases = [ "0101010", 1; "111111", 6; "000000", 0; "101010", 1; "0111101010", 4] 
    in begin
        List.iter (fun (s, expected) ->
            let (count0, count1) = String.fold_left (fun (c0, c1) e -> if e = '0' then (c0 + 1, c1) else (c0, c1 + 1)) (0, 0) s in
            let actual = abs(count0 - count1) in
            assert (actual = expected)
        ) test_cases
    end

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
