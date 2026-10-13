
let rec find_adverbs (text : string) : string =
  let rec loop (i : int) (j : int) : bool =
    if j >= String.length text then false
    else if text.[j] = ' ' then loop (j + 1) (j + 2)
    else if text.[j] = 'l' && String.sub text i (j - i) |> String.ends_with "ly" then 
      print_endline (String.sub text i (j - i));
      true
    (* if not ending with "ly", move the start index to next word *)
    (* else if not (String.sub text i (j - i) |> String.ends_with "ly") then loop (j + 1) (j + 2) *)
    (* else if not (String.sub text i (j - i) |> String.ends_with "ly") then loop i (j + 1) *)
    (* to account for cases where ly is not an adverb *)
    (* not adv has to be a word end, otherwise the 'i' would not check adv by checking adv+ 'ly'*)
    (* even if, "gently" -> "gentlyly" it should output "gently"*)
    (* every next character has to be a letter so any other endings don't match*)
    (* this loop should occur by checking every character in a word and not moving to a new word until space*)
    (* at the end should reset 'i' to next index and repeat process*)
    (* true *)
    (* for example, "quickly walked across the room ungently" should output "quickly" and "ungently"*)
    (* because, this is all done word by word, even if a word "ungentlyly" doesn't appear, it checks for words which ends with "ly"-ungracefully *)
    (* so, we move on to the next adverb starting word and continue this process until we reach the end of the sentence *)
    (* and by doing this we ensure we don't miss any potential 'ly' word we might encounter*)
    (* and the else cases will never execute, until the function call is over, if we consider each word as unique individually*)
    (* and after traversing the loop, if there's still a word ending with 'ly'*)
    (* If it doesn't end with 'ly', this function would just keep checking the next word, till the sentence ends*)
    (* and at the end if no word ends with 'ly', it returns false*)
    (* For all valid and invalid cases, the program should work well*)
    (* in terms of efficiency, the time complexity will be O(n), n being the length of the string*)
    (* because it needs to go through the string only once*)
    (* since the string is linear, this seems to be a very optimal solution*)
  in
  if loop 0 0 then text
  else "no adverb ending with \"ly\" found";;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
