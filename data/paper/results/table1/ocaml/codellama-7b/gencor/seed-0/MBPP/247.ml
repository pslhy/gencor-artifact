
let rec lps (str : string) : int =
  if str = "" then 0 else begin
    let n = String.length str in
    let dp = Array.make_matrix n n 0 in
    for i = 0 to n - 1 do
      dp.(i)(i) := 1;
    done;

    for i = n - 1 downto 1 do
      for j = i + 1 to n - 1 do
        if str.[i] = str.[j] then
          dp.(i)(j) := dp.(i + 1)(j - 1) + 2
        else
          dp.(i)(j) := max dp.(i + 1)(j) dp.(i)(j - 1);
      done;
    done;

    dp.(0)(n - 1)
  end

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
