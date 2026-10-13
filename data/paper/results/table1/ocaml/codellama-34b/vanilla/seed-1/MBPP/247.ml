let rec lps (str : string) : int =
    let n = String.length str in
    let dp = Array.make_matrix (n + 1) (n + 1) 0 in
    for i = 1 to n do
        for j = 1 to n do
            if str.[i - 1] = str.[j - 1] then
                dp.(i).(j) <- dp.(i - 1).(j - 1) + 1
            else
                dp.(i).(j) <- max dp.(i - 1).(j) dp.(i).(j - 1)
        done
    done;
    dp.(n).(n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
