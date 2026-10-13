let rec number_of_substrings (str : string) : int =
  if str = "" then 0 else begin
    let num = ref 0 in
    let n = String.length str in
    for i = 1 to n - 1 do
      if str.[i] <> str.[0] then begin
        num := !num + 1;
        number_of_substrings (String.sub str ~pos:i ~len:(n - i))
      end
    done;
    !num
  end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of non-empty substrings of a given string. *)
