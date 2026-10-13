let rec lps (str : string) : int = 
    let n = String.length str in
    let dp = Array.make (n + 1) 0 in
    (* populate the dp table by solving sub-problems *)
    for i = 1 to n do
        for j = i - 1 downto 0 do
            if str.[i] = str.[j] then
                dp.(i) <- max (dp.(j - 1) + 1) dp.(i)
            else
                dp.(i) <- max dp.(j - 1) dp.(i)
        done
    done;
    (* return the longest palindromic subsequence length *)
    dp.(n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
